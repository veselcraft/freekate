.class Lcom/perm/kate/AudioFragment$28;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;

.field final synthetic val$menus:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 1076
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$28;->this$0:Lcom/perm/kate/AudioFragment;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment$28;->val$menus:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1080
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$28;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1094
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$28;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$3800(Lcom/perm/kate/AudioFragment;)V

    goto :goto_0

    .line 1091
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$28;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$3700(Lcom/perm/kate/AudioFragment;)V

    goto :goto_0

    .line 1088
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$28;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$3600(Lcom/perm/kate/AudioFragment;)V

    goto :goto_0

    .line 1085
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$28;->this$0:Lcom/perm/kate/AudioFragment;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/perm/kate/AudioFragment;->access$3500(Lcom/perm/kate/AudioFragment;J)V

    goto :goto_0

    .line 1082
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$28;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$3400(Lcom/perm/kate/AudioFragment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1098
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1099
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
