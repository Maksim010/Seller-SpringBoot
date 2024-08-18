<#import "blocks/template.ftlh" as t>
<@t.template user>
<h1 style="text-align: center">Редактирование продукта ${product.title}</h1><hr>
    <a class="btn btn-dark mt-3 mb-3" style="text-align: center; width: 100%"
           data-toggle="collapse" href="#collapseExample" role="button"
           aria-expanded="true" aria-controls="collapseExample">
            Изменить товар
        </a>

            <form action="/product/edit/${product.id}" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="productName">Название товара</label>
                    <input type="text" required class="form-control"
                           id="productName" name="title" value=${product.title}>
                </div>
                <div class="form-group">
                    <label for="price">Цена товара</label>
                    <div class="input-group mb-3">
                        <input type="number" required class="form-control" id="price" name="price" value=${product.price}>
                        <div class="input-group-append">
                            <span class="input-group-text">Р</span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="searchCity">Город</label>
                    <select id="searchCity" required name="city" class="form-control">
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
                <div class="form-group">
                    <label for="description">Описание товара</label>
                    <textarea required class="form-control" id="description" name="description" value=${product.description}></textarea>
                </div>
                <div class="form-group">
                    <div class="custom-file">
                        <input required type="file" name="file1" id="file1">
                        <label class="custom-file-label" for="file1">Первая фотография к товару</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="custom-file">
                        <input type="file" name="file2" id="file2">
                        <label class="custom-file-label" for="file2">Вторая фотография к товару</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="custom-file">
                        <input type="file" name="file3" id="file3">
                        <label class="custom-file-label" for="file3">Третья фотография к товару</label>
                    </div>
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>

                <button type="submit" style="width: 100%" class="btn btn-dark">Изменить</button>
            </form>

</@t.template>