.class Lcom/perm/kate/TimezoneChecker$2;
.super Lcom/perm/kate/session/Callback;
.source "TimezoneChecker.java"


# direct methods
.method constructor <init>(Lcom/perm/kate/TimezoneChecker;Landroid/app/Activity;)V
    .locals 0

    .line 38
    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 41
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 42
    invoke-static {v0, v1}, Lcom/perm/utils/TimeFix;->gotTimeFromServer(J)V

    return-void
.end method
