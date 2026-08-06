.class Lcom/perm/kate/EditChatActivity$19;
.super Ljava/lang/Object;
.source "EditChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 390
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$19;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$19;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-virtual {v0}, Lcom/perm/kate/EditChatActivity;->showRequestPhotoDialog()V

    .line 394
    return-void
.end method
