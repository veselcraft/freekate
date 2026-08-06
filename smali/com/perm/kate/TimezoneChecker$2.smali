.class Lcom/perm/kate/TimezoneChecker$2;
.super Lcom/perm/kate/session/Callback;
.source "TimezoneChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/TimezoneChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/TimezoneChecker;


# direct methods
.method constructor <init>(Lcom/perm/kate/TimezoneChecker;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/TimezoneChecker;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/perm/kate/TimezoneChecker$2;->this$0:Lcom/perm/kate/TimezoneChecker;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 34
    .local v0, "server_seconds":J
    invoke-static {v0, v1}, Lcom/perm/utils/TimeFix;->gotTimeFromServer(J)V

    .line 35
    return-void
.end method
