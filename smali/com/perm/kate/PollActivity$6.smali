.class Lcom/perm/kate/PollActivity$6;
.super Ljava/lang/Object;
.source "PollActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PollActivity;->generateCheckBoxes(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollActivity;

.field final synthetic val$ll:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollActivity;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/perm/kate/PollActivity$6;->this$0:Lcom/perm/kate/PollActivity;

    iput-object p2, p0, Lcom/perm/kate/PollActivity$6;->val$ll:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 212
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/PollActivity$6;->val$ll:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 213
    iget-object v3, p0, Lcom/perm/kate/PollActivity$6;->val$ll:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    invoke-virtual {v3}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 216
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 220
    iget-object v2, p0, Lcom/perm/kate/PollActivity$6;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v2, v0}, Lcom/perm/kate/PollActivity;->access$500(Lcom/perm/kate/PollActivity;Ljava/util/ArrayList;)V

    .line 221
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method
