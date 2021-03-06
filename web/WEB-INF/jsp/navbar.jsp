<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/catalog">
                Home Page
            </a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${pageContext.request.contextPath}/downloadStatistics?id=${client.id}">
                    <span class="glyphicon glyphicon-shopping-cartContent" aria-hidden="true"></span>
                    Статистика моих заказов
                </a></li>
                <li><a href="${pageContext.request.contextPath}/seeOrders">
                    <span class="glyphicon glyphicon-shopping-cartContent" aria-hidden="true"></span>
                    Просмотреть мои заказы
                </a></li>
                <li><a href="${pageContext.request.contextPath}/cart">
                    <span class="glyphicon glyphicon-shopping-cartContent" aria-hidden="true"></span>
                    Корзина:
                    <span class="badge">
                        <div id="amountProductsInCart">${sessionScope.cartDto.amountProducts}</div>
                    </span>
                </a></li>
                <li class="dropdown">
                    <a href="${pageContext.request.contextPath}/logout" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                        ${sessionScope.client.fullName}
                        <span class="caret"></span></a>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                        <li><a href="${pageContext.request.contextPath}/logout">Выход</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>