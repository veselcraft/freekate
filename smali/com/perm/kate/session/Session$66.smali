.class Lcom/perm/kate/session/Session$66;
.super Lcom/perm/kate/session/Command;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/session/Session;->getPhotosById(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/session/Session;

.field final synthetic val$extended:Ljava/lang/Integer;

.field final synthetic val$photo_sizes:Ljava/lang/Integer;

.field final synthetic val$photos:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/session/Session;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/session/Session;
    .param p2, "callback"    # Lcom/perm/kate/session/Callback;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 783
    iput-object p1, p0, Lcom/perm/kate/session/Session$66;->this$0:Lcom/perm/kate/session/Session;

    iput-object p4, p0, Lcom/perm/kate/session/Session$66;->val$photos:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/session/Session$66;->val$extended:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/perm/kate/session/Session$66;->val$photo_sizes:Ljava/lang/Integer;

    invoke-direct {p0, p2, p3}, Lcom/perm/kate/session/Command;-><init>(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 786
    iget-object v0, p0, Lcom/perm/kate/session/Session$66;->this$0:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/kate/session/Session$66;->val$photos:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/session/Session$66;->val$extended:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/perm/kate/session/Session$66;->val$photo_sizes:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/api/Api;->getPhotosById(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/session/Session$66;->res:Ljava/lang/Object;

    .line 787
    return-void
.end method
