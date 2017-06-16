using ContactsSrvc.Web.Api.HttpFetchers;
using ContactsSrvc.Web.Api.TypeMappers;
using ContactsSrvc.Web.Api.Models;
using NHibernate;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ContactsSrvc.Web.Common.Security;

namespace ContactsSrvc.Web.Api.Controllers
{
    /// <summary>
    /// Handles requests for PersonType data.
    /// PersonType is a way of classifying Persons in the datastore
    /// </summary>
    public class PersonTypesController : ApiController
    {
        private readonly ISession _session;
        private readonly IPersonTypeMapper _personTypeMapper;
        private readonly IHttpPersonTypeFetcher _personTypeFetcher;

        public PersonTypesController() { }
        public PersonTypesController(
            ISession session,
            IPersonTypeMapper personTypeMapper,
            IHttpPersonTypeFetcher personTypeFetcher)
        {
            //_session = session;
            _personTypeMapper = personTypeMapper;
            _personTypeFetcher = personTypeFetcher;
        }

        public IEnumerable<PersonType> Get()
        {
            return _session
                .QueryOver<Data.Model.PersonType>()
                .List()
                .Select(_personTypeMapper.CreatePersonType)
                .ToList();
        }

        public PersonType Get(long id)
        {
            var personType = _personTypeFetcher.GetPersonType(id);
            return _personTypeMapper.CreatePersonType(personType);
        }

        [AdministratorAuthorized]
        public HttpResponseMessage Post(HttpRequestMessage request, PersonType category)
        {
            var modelCategory = new Data.Model.PersonType
            {
                Description = category.Description,
                Name = category.Name
            };

            _session.Save(modelCategory);

            var newCategory = _personTypeMapper.CreatePersonType(modelCategory);

            var href = newCategory.Links.First(x => x.Rel == "self").Href;

            var response = request.CreateResponse(HttpStatusCode.Created, newCategory);
            response.Headers.Add("Location", href);

            return response;
        }

        [AdministratorAuthorized]
        public HttpResponseMessage Delete()
        {
            var categories = _session.QueryOver<Data.Model.PersonType>().List();
            foreach (var personType in categories)
            {
                _session.Delete(personType);
            }

            return new HttpResponseMessage(HttpStatusCode.OK);
        }

        [AdministratorAuthorized]
        public HttpResponseMessage Delete(long id)
        {
            var personType = _session.Get<Data.Model.PersonType>(id);
            if (personType != null)
            {
                _session.Delete(personType);
            }

            return new HttpResponseMessage(HttpStatusCode.OK);
        }

        [AdministratorAuthorized]
        public PersonType Put(long id, PersonType personType)
        {
            var modelCateogry = _personTypeFetcher.GetPersonType(id);

            modelCateogry.Name = personType.Name;
            modelCateogry.Description = personType.Description;

            _session.SaveOrUpdate(modelCateogry);

            return _personTypeMapper.CreatePersonType(modelCateogry);
        }
    }
}
