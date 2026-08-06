.class Lcom/perm/kate/CreateChatActivity$1;
.super Ljava/lang/Object;
.source "CreateChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/CreateChatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/CreateChatActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/CreateChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/CreateChatActivity;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/perm/kate/CreateChatActivity$1;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity$1;->this$0:Lcom/perm/kate/CreateChatActivity;

    invoke-static {v0}, Lcom/perm/kate/CreateChatActivity;->access$000(Lcom/perm/kate/CreateChatActivity;)V

    .line 42
    return-void
.end method
