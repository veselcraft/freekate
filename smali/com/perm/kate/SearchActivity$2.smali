.class Lcom/perm/kate/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$2;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$2;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$100(Lcom/perm/kate/SearchActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$2;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$200(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$SearchType;

    move-result-object p1

    sget-object v0, Lcom/perm/kate/SearchActivity$SearchType;->Message:Lcom/perm/kate/SearchActivity$SearchType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/perm/kate/SearchActivity$2;->this$0:Lcom/perm/kate/SearchActivity;

    .line 172
    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$300(Lcom/perm/kate/SearchActivity;)Lcom/perm/kate/SearchActivity$MessagesSearchType;

    move-result-object p1

    sget-object v0, Lcom/perm/kate/SearchActivity$MessagesSearchType;->UserMessagesSearch:Lcom/perm/kate/SearchActivity$MessagesSearchType;

    if-eq p1, v0, :cond_0

    .line 173
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$2;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {p1}, Lcom/perm/kate/SearchActivity;->performMessagesSearch()V

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$2;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$000(Lcom/perm/kate/SearchActivity;)V

    :goto_0
    return-void
.end method
