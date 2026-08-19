.class Lcom/perm/kate/EditGroupLinkActivity$6;
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

    .line 127
    iput-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity$6;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/perm/kate/EditGroupLinkActivity$6;->this$0:Lcom/perm/kate/EditGroupLinkActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
