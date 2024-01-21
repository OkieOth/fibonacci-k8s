import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import java.util.ArrayList;
import java.util.List;

@Path("/fibonacci")
public class FibonacciResource {

    @GET
    @Path("/{number}")
    @Produces("application/json")
    public List<Long> getFibonacci(@PathParam("number") int number) {
        List<Long> fibonacciList = generateFibonacci(number);
        return fibonacciList;
    }

    private List<Long> generateFibonacci(int number) {
        List<Long> fibonacciList = new ArrayList<>();
        long first = 0;
        long second = 1;

        for (int i = 0; i < number; i++) {
            fibonacciList.add(first);
            long sum = first + second;
            first = second;
            second = sum;
        }

        return fibonacciList;
    }
}