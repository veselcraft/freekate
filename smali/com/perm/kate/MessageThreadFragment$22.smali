.class Lcom/perm/kate/MessageThreadFragment$22;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field final synthetic val$can_delete_for_all:Z

.field final synthetic val$can_report_spam:Z

.field final synthetic val$cb_delete_for_all:Landroid/widget/CheckBox;

.field final synthetic val$cb_report_spam:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;ZLandroid/widget/CheckBox;ZLandroid/widget/CheckBox;)V
    .locals 0

    .line 1641
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$22;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput-boolean p2, p0, Lcom/perm/kate/MessageThreadFragment$22;->val$can_delete_for_all:Z

    iput-object p3, p0, Lcom/perm/kate/MessageThreadFragment$22;->val$cb_delete_for_all:Landroid/widget/CheckBox;

    iput-boolean p4, p0, Lcom/perm/kate/MessageThreadFragment$22;->val$can_report_spam:Z

    iput-object p5, p0, Lcom/perm/kate/MessageThreadFragment$22;->val$cb_report_spam:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1645
    iget-boolean p1, p0, Lcom/perm/kate/MessageThreadFragment$22;->val$can_delete_for_all:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1646
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$22;->val$cb_delete_for_all:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1648
    :goto_0
    iget-boolean v0, p0, Lcom/perm/kate/MessageThreadFragment$22;->val$can_report_spam:Z

    if-eqz v0, :cond_1

    .line 1649
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$22;->val$cb_report_spam:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    .line 1650
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$22;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0, p1, p2}, Lcom/perm/kate/MessageThreadFragment;->access$3700(Lcom/perm/kate/MessageThreadFragment;ZZ)V

    return-void
.end method
