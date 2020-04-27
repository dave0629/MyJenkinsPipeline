#include "audience/encode/audience_session.h"
#include "audience/device/audience_device.h"

int AudienceSession::open() {
    AudienceDevice device; 
    device.get_desc();
    return 0;
}

int AudienceSession::close() {
    return 0;
}