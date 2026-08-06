.class Lcom/perm/kate/Online$2;
.super Ljava/lang/Thread;
.source "Online.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/Online;->setOffline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/Online;


# direct methods
.method constructor <init>(Lcom/perm/kate/Online;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/Online;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/perm/kate/Online$2;->this$0:Lcom/perm/kate/Online;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0, v1, v1}, Lcom/perm/kate/session/Session;->setOffline(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
