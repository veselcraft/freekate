.class Lcom/perm/kate/AudioFragment$23;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;

.field final synthetic val$items:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;[Ljava/lang/CharSequence;)V
    .locals 0

    .line 879
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$23;->this$0:Lcom/perm/kate/AudioFragment;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment$23;->val$items:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 881
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$23;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1, p2}, Lcom/perm/kate/AudioFragment;->access$2900(Lcom/perm/kate/AudioFragment;I)V

    .line 882
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$23;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$3000(Lcom/perm/kate/AudioFragment;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$23;->val$items:[Ljava/lang/CharSequence;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
