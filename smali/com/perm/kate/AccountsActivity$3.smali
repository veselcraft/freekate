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

    .line 108
    iput-object p1, p0, Lcom/perm/kate/AccountsActivity$3;->this$0:Lcom/perm/kate/AccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 111
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object p2, p2, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/account/Account;

    iget-object p2, p2, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/perm/kate/AccountsActivity$3;->this$0:Lcom/perm/kate/AccountsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 117
    :cond_0
    sget-object p1, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/session/Session;

    sput-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 118
    invoke-static {}, Lcom/perm/kate/KApplication;->saveActiveSession()V

    .line 119
    iget-object p1, p0, Lcom/perm/kate/AccountsActivity$3;->this$0:Lcom/perm/kate/AccountsActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 120
    iget-object p1, p0, Lcom/perm/kate/AccountsActivity$3;->this$0:Lcom/perm/kate/AccountsActivity;

    invoke-static {p1}, Lcom/perm/kate/KateWidgetMessages;->updateAll(Landroid/content/Context;)V

    .line 121
    iget-object p1, p0, Lcom/perm/kate/AccountsActivity$3;->this$0:Lcom/perm/kate/AccountsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
