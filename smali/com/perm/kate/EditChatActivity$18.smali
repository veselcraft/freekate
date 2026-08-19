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

    .line 421
    iput-object p1, p0, Lcom/perm/kate/EditChatActivity$18;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 424
    iget-object p1, p0, Lcom/perm/kate/EditChatActivity$18;->this$0:Lcom/perm/kate/EditChatActivity;

    invoke-virtual {p1}, Lcom/perm/kate/EditChatActivity;->showRequestPhotoDialog()V

    return-void
.end method
