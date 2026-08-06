.class Lcom/perm/kate/session/Session$67;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->getPhotoCountsByIdWithExecute(Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$get_user_id:Z

.field final synthetic val$photo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/perm/kate/session/Session$67;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$67;->val$photo:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/perm/kate/session/Session$67;->val$get_user_id:Z

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 795
    iget-object v0, p0, Lcom/perm/kate/session/Session$67;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$67;->val$photo:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/perm/kate/session/Session$67;->val$get_user_id:Z

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Api;->getPhotoCountsByIdWithExecute(Ljava/lang/String;Z)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$67;->res:Ljava/lang/Object;

    .line 796
    return-void
.end method
