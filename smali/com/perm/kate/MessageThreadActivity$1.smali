.class Lcom/perm/kate/MessageThreadActivity$1;
.super Ljava/lang/Object;
.source "MessageThreadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageThreadActivity;->prepareHeader(Lcom/perm/kate/api/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadActivity;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/perm/kate/MessageThreadActivity$1;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 194
    iget-object p1, p0, Lcom/perm/kate/MessageThreadActivity$1;->this$0:Lcom/perm/kate/MessageThreadActivity;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadActivity;->access$000(Lcom/perm/kate/MessageThreadActivity;)Lcom/perm/kate/MessageThreadFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/MessageThreadFragment;->editChat()V

    return-void
.end method
