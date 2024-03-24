import org.junit.jupiter.api.Test;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.is;

public class FooTest {

    @Test
    public void please_give_me_a_good_name() {
        Foo foo = new Foo();

        int result = foo.add(1, 41);

        assertThat(result, is(42));
    }
}
