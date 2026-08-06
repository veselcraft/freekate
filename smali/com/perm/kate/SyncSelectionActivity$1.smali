.class Lcom/perm/kate/SyncSelectionActivity$1;
.super Ljava/lang/Object;
.source "SyncSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SyncSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SyncSelectionActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SyncSelectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SyncSelectionActivity;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 51
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    iget v0, v0, Lcom/perm/kate/SyncSelectionActivity;->step:I

    if-nez v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {v0}, Lcom/perm/kate/SyncSelectionActivity;->access$000(Lcom/perm/kate/SyncSelectionActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-virtual {v0}, Lcom/perm/kate/SyncSelectionActivity;->finish()V

    .line 54
    sget-object v0, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    const/4 v1, 0x0

    iput v1, v0, Lcom/perm/kate/SyncActivity$SyncSettings;->sync_type:I

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    iput v2, v0, Lcom/perm/kate/SyncSelectionActivity;->step:I

    .line 69
    :cond_0
    :goto_1
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {v0}, Lcom/perm/kate/SyncSelectionActivity;->access$100(Lcom/perm/kate/SyncSelectionActivity;)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    iget v0, v0, Lcom/perm/kate/SyncSelectionActivity;->step:I

    if-ne v0, v2, :cond_0

    .line 61
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {v0}, Lcom/perm/kate/SyncSelectionActivity;->access$200(Lcom/perm/kate/SyncSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 62
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    const v1, 0x7f070441

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-virtual {v0}, Lcom/perm/kate/SyncSelectionActivity;->finish()V

    .line 65
    sget-object v0, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    iput v2, v0, Lcom/perm/kate/SyncActivity$SyncSettings;->sync_type:I

    .line 66
    sget-object v0, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    iget-object v1, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {v1}, Lcom/perm/kate/SyncSelectionActivity;->access$200(Lcom/perm/kate/SyncSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/SyncActivity$SyncSettings;->checkedGroups:Ljava/util/ArrayList;

    goto :goto_1
.end method
