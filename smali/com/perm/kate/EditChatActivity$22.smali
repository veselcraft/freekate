.class Lcom/perm/kate/EditChatActivity$22;
.super Ljava/lang/Object;
.source "EditChatActivity.java"

# interfaces
.implements Lcom/perm/kate/photoupload/UploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditChatActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditChatActivity;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$22;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 441
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$22;->this$0:Lcom/perm/kate/EditChatActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/EditChatActivity;->access$602(Lcom/perm/kate/EditChatActivity;Z)Z

    .line 442
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$22;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {v0}, Lcom/perm/kate/EditChatActivity;->access$2500(Lcom/perm/kate/EditChatActivity;)V

    .line 443
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$22;->this$0:Lcom/perm/kate/EditChatActivity;

    const v1, 0x7f0704a3

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditChatActivity;->displayToast(I)V

    .line 444
    return-void
.end method
