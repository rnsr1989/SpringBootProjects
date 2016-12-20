<div class="col-md-6 col-md-offset-3">
    <h2>Login</h2>
    <form name="form" ng-submit="vm.login()" role="form">
        <div class="form-group" ng-class="{ 'has-error': form.username.$dirty && form.username.$error.required }">
            <label for="userName">Username</label>
            <input type="text" name="userName" id="userName" class="form-control" ng-model="vm.userName" required />
        </div>
        <br>
        <div class="form-group" ng-class="{ 'has-error': form.password.$dirty && form.password.$error.required }">
            <label for="password">Password</label>
            <input type="password" name="password" id="password" class="form-control" ng-model="vm.password" required />
        </div>
        <br>
        <div class="form-actions">
            <button type="submit" ng-disabled="form.$invalid || vm.dataLoading" class="btn btn-primary">Login</button>
            <a href="#/register" class="btn btn-link">Register</a>
        </div>
    </form>
</div>