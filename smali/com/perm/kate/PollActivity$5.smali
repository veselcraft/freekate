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

    .line 169
    iput-object p1, p0, Lcom/perm/kate/PollActivity$5;->this$0:Lcom/perm/kate/PollActivity;

    iput-object p2, p0, Lcom/perm/kate/PollActivity$5;->val$rg:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/perm/kate/PollActivity$5;->val$rg:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PollActivity$5;->this$0:Lcom/perm/kate/PollActivity;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/perm/kate/PollActivity$5;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/PollActivity;->access$500(Lcom/perm/kate/PollActivity;Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method
