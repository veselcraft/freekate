.class Lcom/perm/kate/DocsFragment$11;
.super Ljava/lang/Object;
.source "DocsFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$11;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-eqz p1, :cond_2

    .line 355
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/perm/kate/DocsFragment$11;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {p3}, Lcom/perm/kate/DocsFragment;->access$700(Lcom/perm/kate/DocsFragment;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 357
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/DocsFragment$11;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {p2}, Lcom/perm/kate/DocsFragment;->access$1000(Lcom/perm/kate/DocsFragment;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Landroid/widget/CursorAdapter;

    invoke-virtual {p2}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 358
    iget-object p2, p0, Lcom/perm/kate/DocsFragment$11;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {p2}, Lcom/perm/kate/DocsFragment;->access$1100(Lcom/perm/kate/DocsFragment;)Landroid/widget/ImageButton;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 359
    iget-object p2, p0, Lcom/perm/kate/DocsFragment$11;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {p2}, Lcom/perm/kate/DocsFragment;->access$1100(Lcom/perm/kate/DocsFragment;)Landroid/widget/ImageButton;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
