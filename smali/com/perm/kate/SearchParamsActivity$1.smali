.class Lcom/perm/kate/SearchParamsActivity$1;
.super Ljava/lang/Object;
.source "SearchParamsActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchParamsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchParamsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$1;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$1;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchParamsActivity;->access$000(Lcom/perm/kate/SearchParamsActivity;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
