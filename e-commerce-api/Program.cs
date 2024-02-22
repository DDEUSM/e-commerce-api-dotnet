using e_commerce_api.use_cases;

var builder = WebApplication.CreateBuilder
(args);
{
    builder.Services.AddControllers();
    builder.Services.AddTransient<IProductUseCases, ProductUseCases>();
}

var app = builder.Build();
{
    app.UseExceptionHandler("/error");
    app.UseHttpsRedirection();
    app.MapControllers();
    app.Run();
}

