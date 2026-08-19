.class Lcom/perm/kate/EditChatActivity$21;
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

    .line 469
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$21;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/perm/kate/api/Photo;",
            ">;)V"
        }
    .end annotation

    .line 472
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$21;->this$0:Lcom/perm/kate/EditChatActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/perm/kate/EditChatActivity;->access$702(Lcom/perm/kate/EditChatActivity;Z)Z

    .line 473
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$21;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-static {p1}, Lcom/perm/kate/EditChatActivity;->access$2600(Lcom/perm/kate/EditChatActivity;)V

    .line 474
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$21;->this$0:Lcom/perm/kate/EditChatActivity;

    const v0, 0x7f0f052d

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void
.end method
