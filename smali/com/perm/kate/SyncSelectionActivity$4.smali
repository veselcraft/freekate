.class Lcom/perm/kate/SyncSelectionActivity$4;
.super Ljava/lang/Object;
.source "SyncSelectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SyncSelectionActivity;->generateGroupsCheckboxes()V
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

    .line 106
    iput-object p1, p0, Lcom/perm/kate/SyncSelectionActivity$4;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/perm/kate/SyncSelectionActivity$4;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {v0}, Lcom/perm/kate/SyncSelectionActivity;->access$600(Lcom/perm/kate/SyncSelectionActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 110
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 111
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/SyncSelectionActivity$4;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {v2}, Lcom/perm/kate/SyncSelectionActivity;->access$400(Lcom/perm/kate/SyncSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 112
    new-instance v2, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/perm/kate/SyncSelectionActivity$4;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-direct {v2, v3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 113
    iget-object v3, p0, Lcom/perm/kate/SyncSelectionActivity$4;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {v3}, Lcom/perm/kate/SyncSelectionActivity;->access$400(Lcom/perm/kate/SyncSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/FriendsList;

    iget-object v3, v3, Lcom/perm/kate/api/FriendsList;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v3, p0, Lcom/perm/kate/SyncSelectionActivity$4;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {v3}, Lcom/perm/kate/SyncSelectionActivity;->access$400(Lcom/perm/kate/SyncSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/FriendsList;

    iget v3, v3, Lcom/perm/kate/api/FriendsList;->lid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object v3, p0, Lcom/perm/kate/SyncSelectionActivity$4;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {v3}, Lcom/perm/kate/SyncSelectionActivity;->access$700(Lcom/perm/kate/SyncSelectionActivity;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v3, p0, Lcom/perm/kate/SyncSelectionActivity$4;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {v3}, Lcom/perm/kate/SyncSelectionActivity;->access$600(Lcom/perm/kate/SyncSelectionActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    sget-object v3, Lcom/perm/kate/SyncActivity;->syncSettings:Lcom/perm/kate/SyncActivity$SyncSettings;

    iget-object v3, v3, Lcom/perm/kate/SyncActivity$SyncSettings;->checkedGroups:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/perm/kate/SyncSelectionActivity$4;->this$0:Lcom/perm/kate/SyncSelectionActivity;

    invoke-static {v4}, Lcom/perm/kate/SyncSelectionActivity;->access$400(Lcom/perm/kate/SyncSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/FriendsList;

    iget v4, v4, Lcom/perm/kate/api/FriendsList;->lid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
