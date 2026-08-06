.class Lcom/perm/kate/GroupActivity$26;
.super Ljava/lang/Object;
.source "GroupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupActivity;->choseSubscriptionType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$26;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 835
    packed-switch p2, :pswitch_data_0

    .line 845
    :goto_0
    return-void

    .line 838
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$26;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/GroupActivity;->access$2400(Lcom/perm/kate/GroupActivity;I)V

    goto :goto_0

    .line 842
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$26;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/GroupActivity;->access$2400(Lcom/perm/kate/GroupActivity;I)V

    goto :goto_0

    .line 835
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
