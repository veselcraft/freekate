.class Lcom/perm/kate/AccountsActivity$1;
.super Ljava/lang/Object;
.source "AccountsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 50
    iput-object p1, p0, Lcom/perm/kate/AccountsActivity$1;->this$0:Lcom/perm/kate/AccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/perm/kate/AccountsActivity$1;->this$0:Lcom/perm/kate/AccountsActivity;

    invoke-static {v0}, Lcom/perm/kate/AccountsActivity;->access$000(Lcom/perm/kate/AccountsActivity;)V

    .line 54
    return-void
.end method
