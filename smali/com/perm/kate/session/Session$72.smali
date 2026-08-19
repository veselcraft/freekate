.class Lcom/perm/kate/session/Session$72;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$get_user_id:Z

.field final synthetic val$photo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0

    .line 931
    iput-object p1, p0, Lcom/perm/kate/session/Session$72;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$72;->val$photo:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/perm/kate/session/Session$72;->val$get_user_id:Z

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 934
    iget-object v0, p0, Lcom/perm/kate/session/Session$72;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$72;->val$photo:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/perm/kate/session/Session$72;->val$get_user_id:Z

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Api;->getPhotoCountsByIdWithExecute(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Command;->res:Ljava/lang/Object;

    return-void
.end method
