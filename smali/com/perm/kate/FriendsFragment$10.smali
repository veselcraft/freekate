.class Lcom/perm/kate/FriendsFragment$10;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FriendsFragment;->showFilterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$10;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 482
    packed-switch p2, :pswitch_data_0

    .line 497
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$10;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/FriendsFragment;->access$1300(Lcom/perm/kate/FriendsFragment;)V

    .line 498
    return-void

    .line 485
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$10;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v1, 0x2

    iput v1, v0, Lcom/perm/kate/FriendsFragment;->sex_filter:I

    goto :goto_0

    .line 489
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$10;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v1, 0x1

    iput v1, v0, Lcom/perm/kate/FriendsFragment;->sex_filter:I

    goto :goto_0

    .line 493
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$10;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v1, 0x0

    iput v1, v0, Lcom/perm/kate/FriendsFragment;->sex_filter:I

    goto :goto_0

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
