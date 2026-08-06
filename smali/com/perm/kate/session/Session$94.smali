.class Lcom/perm/kate/session/Session$94;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->createPoll(Ljava/lang/String;ZLjava/lang/Long;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$answers:Ljava/util/ArrayList;

.field final synthetic val$is_anonymous:Z

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$question:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/Long;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/perm/kate/session/Session$94;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$94;->val$question:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/perm/kate/session/Session$94;->val$is_anonymous:Z

    iput-object p6, p0, Lcom/perm/kate/session/Session$94;->val$owner_id:Ljava/lang/Long;

    iput-object p7, p0, Lcom/perm/kate/session/Session$94;->val$answers:Ljava/util/ArrayList;

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
    .line 1060
    iget-object v0, p0, Lcom/perm/kate/session/Session$94;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$94;->val$question:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/perm/kate/session/Session$94;->val$is_anonymous:Z

    iget-object v3, p0, Lcom/perm/kate/session/Session$94;->val$owner_id:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/session/Session$94;->val$answers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/api/Api;->createPoll(Ljava/lang/String;ZLjava/lang/Long;Ljava/util/Collection;)Lcom/perm/kate/api/VkPoll;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$94;->res:Ljava/lang/Object;

    .line 1061
    return-void
.end method
