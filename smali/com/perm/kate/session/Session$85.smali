.class Lcom/perm/kate/session/Session$85;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->getSubscriptions(Ljava/lang/Long;IILjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$count:I

.field final synthetic val$extended:Ljava/lang/Integer;

.field final synthetic val$offset:I

.field final synthetic val$uid:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/Long;IILjava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 976
    iput-object p1, p0, Lcom/perm/kate/session/Session$85;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$85;->val$uid:Ljava/lang/Long;

    iput p5, p0, Lcom/perm/kate/session/Session$85;->val$offset:I

    iput p6, p0, Lcom/perm/kate/session/Session$85;->val$count:I

    iput-object p7, p0, Lcom/perm/kate/session/Session$85;->val$extended:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 979
    iget-object v0, p0, Lcom/perm/kate/session/Session$85;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$85;->val$uid:Ljava/lang/Long;

    iget v2, p0, Lcom/perm/kate/session/Session$85;->val$offset:I

    iget v3, p0, Lcom/perm/kate/session/Session$85;->val$count:I

    iget-object v4, p0, Lcom/perm/kate/session/Session$85;->val$extended:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/api/Api;->getSubscriptions(Ljava/lang/Long;IILjava/lang/Integer;)Lcom/perm/kate/api/InterestingPages;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$85;->res:Ljava/lang/Object;

    .line 980
    return-void
.end method
