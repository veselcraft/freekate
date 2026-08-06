.class Lcom/perm/kate/PollActivity$5;
.super Ljava/lang/Object;
.source "PollActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PollActivity;->generateRadioButtons(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollActivity;

.field final synthetic val$rg:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollActivity;Landroid/widget/RadioGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PollActivity;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/perm/kate/PollActivity$5;->this$0:Lcom/perm/kate/PollActivity;

    iput-object p2, p0, Lcom/perm/kate/PollActivity$5;->val$rg:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v2, p0, Lcom/perm/kate/PollActivity$5;->val$rg:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 161
    .local v1, "rb_id":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/PollActivity$5;->this$0:Lcom/perm/kate/PollActivity;

    invoke-virtual {v2, v1}, Lcom/perm/kate/PollActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 164
    .local v0, "answer_id":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 165
    iget-object v2, p0, Lcom/perm/kate/PollActivity$5;->this$0:Lcom/perm/kate/PollActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/perm/kate/PollActivity;->access$500(Lcom/perm/kate/PollActivity;J)V

    .line 166
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
