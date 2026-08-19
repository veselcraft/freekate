.class Lcom/perm/kate/AccountsActivity$7;
.super Ljava/lang/Object;
.source "AccountsActivity.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$DropListener;


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

    .line 180
    iput-object p1, p0, Lcom/perm/kate/AccountsActivity$7;->this$0:Lcom/perm/kate/AccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 2

    .line 184
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v0, v0, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/account/Account;

    .line 185
    sget-object v1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v1, v1, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 186
    sget-object v1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    iget-object v1, v1, Lcom/perm/kate/account/AccountManager;->accounts:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 187
    sget-object v0, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {v0}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V

    .line 189
    sget-object v0, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/session/Session;

    .line 190
    sget-object v1, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 191
    sget-object p1, Lcom/perm/kate/KApplication;->sessions:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 193
    iget-object p1, p0, Lcom/perm/kate/AccountsActivity$7;->this$0:Lcom/perm/kate/AccountsActivity;

    iget-object p1, p1, Lcom/perm/kate/AccountsActivity;->list:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
