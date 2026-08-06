.class Lcom/perm/kate/PollCreateActivity$8;
.super Ljava/lang/Object;
.source "PollCreateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PollCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollCreateActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollCreateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PollCreateActivity;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/perm/kate/PollCreateActivity$8;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    .line 183
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity$8;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$1600(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/EditText;

    move-result-object v0

    .line 184
    .local v0, "et":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity$8;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$1700(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity$8;->this$0:Lcom/perm/kate/PollCreateActivity;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-static {v1, v2}, Lcom/perm/kate/PollCreateActivity;->access$1702(Lcom/perm/kate/PollCreateActivity;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    .line 186
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity$8;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$1700(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity$8;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$1800(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/PollCreateActivity$8;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v2}, Lcom/perm/kate/PollCreateActivity;->access$1700(Lcom/perm/kate/PollCreateActivity;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity$8;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$900(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity$8;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$900(Lcom/perm/kate/PollCreateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_1

    .line 191
    iget-object v1, p0, Lcom/perm/kate/PollCreateActivity$8;->this$0:Lcom/perm/kate/PollCreateActivity;

    invoke-static {v1}, Lcom/perm/kate/PollCreateActivity;->access$1900(Lcom/perm/kate/PollCreateActivity;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :cond_1
    return-void
.end method
