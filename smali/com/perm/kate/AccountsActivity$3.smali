.class Lcom/perm/kate/AccountsActivity$3;
.super Ljava/lang/Object;
.source "AccountsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AccountsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AccountsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AccountsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AccountsActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/perm/kate/AccountsActivity$3;->this$0:Lcom/perm/kate/AccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 106
    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1
    
    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getDomain()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v0, v0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/account/Account;

    iget-object v3, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0
    
    iget-object v3, v0, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    iget-object v0, p0, Lcom/perm/kate/AccountsActivity$3;->this$0:Lcom/perm/kate/AccountsActivity;

    invoke-virtual {v0}, Lcom/perm/kate/AccountsActivity;->finish()V

    .line 117
    :goto_0
    return-void

    .line 111
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/session/Session;

    sput-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 112
    invoke-static {}, Lcom/perm/kate/KApplication;->saveActiveSession()V

    .line 113
    iget-object v0, p0, Lcom/perm/kate/AccountsActivity$3;->this$0:Lcom/perm/kate/AccountsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/AccountsActivity;->setResult(I)V

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lcom/perm/kate/AccountsActivity$3;->this$0:Lcom/perm/kate/AccountsActivity;

    invoke-static {v0}, Lcom/perm/kate/KateWidgetMessages;->updateAll(Landroid/content/Context;)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/AccountsActivity$3;->this$0:Lcom/perm/kate/AccountsActivity;

    invoke-virtual {v0}, Lcom/perm/kate/AccountsActivity;->finish()V

    goto :goto_0
.end method
