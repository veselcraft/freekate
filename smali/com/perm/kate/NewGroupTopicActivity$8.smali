.class Lcom/perm/kate/NewGroupTopicActivity$8;
.super Ljava/lang/Object;
.source "NewGroupTopicActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewGroupTopicActivity;->createSettingsDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewGroupTopicActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewGroupTopicActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewGroupTopicActivity;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$8;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 168
    check-cast p1, Landroid/support/v7/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 169
    .local v0, "lv":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/perm/kate/NewGroupTopicActivity$8;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/perm/kate/NewGroupTopicActivity;->access$602(Lcom/perm/kate/NewGroupTopicActivity;Z)Z

    .line 170
    return-void
.end method
