.class Lcom/perm/kate/session/Session$284;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$chats:Ljava/util/ArrayList;

.field final synthetic val$users:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 2893
    iput-object p1, p0, Lcom/perm/kate/session/Session$284;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$284;->val$users:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/perm/kate/session/Session$284;->val$chats:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2896
    iget-object v0, p0, Lcom/perm/kate/session/Session$284;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$284;->val$users:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/session/Session$284;->val$chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Api;->deleteDialogs(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
