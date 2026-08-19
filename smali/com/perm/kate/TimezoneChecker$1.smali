.class Lcom/perm/kate/TimezoneChecker$1;
.super Ljava/lang/Thread;
.source "TimezoneChecker.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/TimezoneChecker;


# direct methods
.method constructor <init>(Lcom/perm/kate/TimezoneChecker;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/perm/kate/TimezoneChecker$1;->this$0:Lcom/perm/kate/TimezoneChecker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 32
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/TimezoneChecker$1;->this$0:Lcom/perm/kate/TimezoneChecker;

    invoke-static {v1}, Lcom/perm/kate/TimezoneChecker;->access$000(Lcom/perm/kate/TimezoneChecker;)Lcom/perm/kate/session/Callback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->getServerTime(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
