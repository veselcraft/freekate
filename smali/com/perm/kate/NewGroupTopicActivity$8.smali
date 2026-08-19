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

    .line 165
    iput-object p1, p0, Lcom/perm/kate/NewGroupTopicActivity$8;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 168
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 169
    iget-object p2, p0, Lcom/perm/kate/NewGroupTopicActivity$8;->this$0:Lcom/perm/kate/NewGroupTopicActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/perm/kate/NewGroupTopicActivity;->access$602(Lcom/perm/kate/NewGroupTopicActivity;Z)Z

    return-void
.end method
