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

    .line 48
    iput-object p1, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 51
    iget-object p1, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    iget v0, p1, Lcom/perm/kate/SyncSelectionActivity;->step:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 52
    invoke-static {p1}, Lcom/perm/kate/SyncSelectionActivity;->access$000(Lcom/perm/kate/SyncSelectionActivity;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 54
    sget-object p1, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    const/4 v0, 0x0

    iput v0, p1, Lcom/perm/kate/SyncActivity$SyncSettings;->sync_type:I

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {p1}, Lcom/perm/kate/SyncSelectionActivity;->access$100(Lcom/perm/kate/SyncSelectionActivity;)V

    .line 58
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    iput v1, p1, Lcom/perm/kate/SyncSelectionActivity;->step:I

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_3

    .line 61
    invoke-static {p1}, Lcom/perm/kate/SyncSelectionActivity;->access$200(Lcom/perm/kate/SyncSelectionActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 62
    iget-object p1, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    const v0, 0x7f0f04d4

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 65
    sget-object p1, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    iput v1, p1, Lcom/perm/kate/SyncActivity$SyncSettings;->sync_type:I

    .line 66
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity$1;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {v0}, Lcom/perm/kate/SyncSelectionActivity;->access$200(Lcom/perm/kate/SyncSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/perm/kate/SyncActivity$SyncSettings;->checkedGroups:Ljava/util/ArrayList;

    :cond_3
    :goto_1
    return-void
.end method
