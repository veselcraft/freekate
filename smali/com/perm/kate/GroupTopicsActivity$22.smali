.class Lcom/perm/kate/GroupTopicsActivity$22;
.super Ljava/lang/Object;
.source "GroupTopicsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupTopicsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupTopicsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupTopicsActivity;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity$22;->this$0:Lcom/perm/kate/GroupTopicsActivity;

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

    if-nez p1, :cond_0

    return-void

    .line 514
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/GroupTopicsActivity$22;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {p2}, Lcom/perm/kate/GroupTopicsActivity;->access$1500(Lcom/perm/kate/GroupTopicsActivity;)Landroid/widget/ListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Landroid/widget/CursorAdapter;

    invoke-virtual {p2}, Landroid/widget/CursorAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 515
    iget-object p2, p0, Lcom/perm/kate/GroupTopicsActivity$22;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {p2}, Lcom/perm/kate/GroupTopicsActivity;->access$1600(Lcom/perm/kate/GroupTopicsActivity;)Landroid/widget/ImageButton;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 516
    iget-object p2, p0, Lcom/perm/kate/GroupTopicsActivity$22;->this$0:Lcom/perm/kate/GroupTopicsActivity;

    invoke-static {p2}, Lcom/perm/kate/GroupTopicsActivity;->access$1600(Lcom/perm/kate/GroupTopicsActivity;)Landroid/widget/ImageButton;

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
    return-void
.end method
