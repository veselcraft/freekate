.class Lcom/perm/kate/MessageThreadFragment$29;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 1782
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$29;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1785
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 1786
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$29;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x2

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 1788
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$29;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$3900(Lcom/perm/kate/MessageThreadFragment;)V

    :goto_0
    const-string p1, "voice"

    .line 1789
    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$4000(Ljava/lang/String;)V

    return-void
.end method
