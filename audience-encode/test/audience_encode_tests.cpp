#include <gtest/gtest.h>
#include "audience/encode/audience_session.h"

using namespace std;

TEST(smoke_tests, open_and_close) 
{
	auto session = unique_ptr<AudienceSession>();
	EXPECT_EQ(0, session->open());
	EXPECT_EQ(0, session->close());
}