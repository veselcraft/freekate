.class Lcom/perm/kate/AccountsActivity$4;
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

    .line 126
    iput-object p1, p0, Lcom/perm/kate/AccountsActivity$4;->this$0:Lcom/perm/kate/AccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 130
    iget-object v0, p0, Lcom/perm/kate/AccountsActivity$4;->this$0:Lcom/perm/kate/AccountsActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/AccountsActivity;->access$100(Lcom/perm/kate/AccountsActivity;I)V

    return-void
.end method
