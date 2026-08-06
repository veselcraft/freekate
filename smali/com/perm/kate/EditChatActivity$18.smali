.class Lcom/perm/kate/EditChatActivity$18;
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
    .line 382
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$18;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$18;->this$0:Lcom/perm/kate/EditChatActivity;

    const v1, 0x7f0704de

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditChatActivity;->displayToast(I)V

    .line 386
    iget-object v0, p0, Lcom/perm/kate/EditChatActivity$18;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-virtual {v0}, Lcom/perm/kate/EditChatActivity;->finish()V

    .line 387
    return-void
.end method
