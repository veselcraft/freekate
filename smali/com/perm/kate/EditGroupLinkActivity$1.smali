.class Lcom/perm/kate/EditGroupLinkActivity$1;
.super Ljava/lang/Object;
.source "EditGroupLinkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/EditGroupLinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditGroupLinkActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditGroupLinkActivity;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity$1;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity$1;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupLinkActivity;->access$000(Lcom/perm/kate/EditGroupLinkActivity;)Lcom/perm/kate/api/Link;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity$1;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupLinkActivity;->access$100(Lcom/perm/kate/EditGroupLinkActivity;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity$1;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-static {p1}, Lcom/perm/kate/EditGroupLinkActivity;->access$200(Lcom/perm/kate/EditGroupLinkActivity;)V

    :goto_0
    return-void
.end method
