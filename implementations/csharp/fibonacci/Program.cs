var builder = WebApplication.CreateBuilder(args);

builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "Fibonacci API v1"));
}

app.UseHttpsRedirection();

app.MapGet("/fibonacci/{number}", (int number) =>
{
    var fibonacciNumbers = GenerateFibonacciNumbers(number);
    return fibonacciNumbers;
})
.WithName("GetFibonacciNumbers")
.WithOpenApi();

app.Run();

List<long> GenerateFibonacciNumbers(int n)
{
    List<long> fibonacciNumbers = new List<long>();
    long a = 0, b = 1;

    for (int i = 0; i < n; i++)
    {
        fibonacciNumbers.Add(a);
        long temp = a;
        a = b;
        b = temp + b;
    }

    return fibonacciNumbers;
}

// var builder = WebApplication.CreateBuilder(args);

// builder.Services.AddEndpointsApiExplorer();
// builder.Services.AddSwaggerGen();

// var app = builder.Build();

// if (app.Environment.IsDevelopment())
// {
//     app.UseSwagger();
//     app.UseSwaggerUI();
// }

// app.UseHttpsRedirection();

// app.MapGet("/weatherforecast", () =>
// {
//     var forecast =  Enumerable.Range(1, 5).Select(index =>
//         new WeatherForecast
//         (
//             DateOnly.FromDateTime(DateTime.Now.AddDays(index)),
//             Random.Shared.Next(-20, 55),
//             summaries[Random.Shared.Next(summaries.Length)]
//         ))
//         .ToArray();
//     return forecast;
// })
// .WithName("GetWeatherForecast")
// .WithOpenApi();

// app.Run();

// record WeatherForecast(DateOnly Date, int TemperatureC, string? Summary)
// {
//     public int TemperatureF => 32 + (int)(TemperatureC / 0.5556);
// }
