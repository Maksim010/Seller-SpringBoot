<#import "blocks/template.ftlh" as t>
<@t.template user>
    <h1 style="text-align: center">Поиск товаров</h1><hr>
    <form method="get" action="/">
        <div class="form-row">
            <div class="form-group col-md-2">
                <label for="searchCity">Город</label>
                <select id="searchCity" class="form-control">
                     <option value="">Город не выбран</option>
                        <option value="Москва">Москва</option>
                        <option value="Санкт-Петербург">Санкт-Петербург</option>
                        <option value="Новосибирск">Новосибирск</option>
                        <option value="Екатеринбург">Екатеринбург</option>
                        <option value="Нижний Новгород">Нижний Новгород</option>
                        <option value="Казань">Казань</option>
                        <option value="Челябинск">Челябинск</option>
                        <option value="Омск">Омск</option>
                        <option value="Самара">Самара</option>
                        <option value="Ростов-на-Дону">Ростов-на-Дону</option>
                        <option value="Уфа">Уфа</option>
                        <option value="Красноярск">Красноярск</option>
                        <option value="Воронеж">Воронеж</option>
                        <option value="Пермь">Пермь</option>
                        <option value="Волгоград">Волгоград</option>
                        <option value="Краснодар">Краснодар</option>
                        <option value="Тюмень">Тюмень</option>
                        <option value="Ижевск">Ижевск</option>
                        <option value="Барнаул">Барнаул</option>
                        <option value="Ульяновск">Ульяновск</option>
                        <option value="Иркутск">Иркутск</option>
                        <option value="Крым">Симферополь</option>
                        <option value="Хабаровск">Хабаровск</option>
                        <option value="Ярославль">Ярославль</option>
                        <option value="Тула">Тула</option>
                        <option value="Саратов">Саратов</option>
                </select>
            </div>
            <div class="form-group col-md-10">
                <label for="searchWord">Поиск по объявлениям</label>
                <input type="text" name="searchWord" <#if searchWord??>value="${searchWord}"</#if> class="form-control"
                       id="searchWord">
            </div>
            <button style="width: 100%" type="submit" class="btn btn-dark">Поиск</button>
        </div>
    </form>
    <hr>
    <div class="card-columns">
        <#list products as product>
            <a href="/product/${product.id}" class="product-link">
                <div class="card text-white bg-dark my-3 product">

                    <img src="/images/${product.previewImageId}"
                         class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title">${product.title}</h5>
                        <p class="card-text">${product.price} ₽</p>
                    </div>
                    <div class="card-footer">
                        ${product.city}
                    </div>
                </div>
            </a>
        <#else>
            <h1 style="text-align: center">Не найдено</h1>
        </#list>
    </div>
</@t.template>