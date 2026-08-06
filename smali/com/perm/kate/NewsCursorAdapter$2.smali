.class final Lcom/perm/kate/NewsCursorAdapter$2;
.super Landroid/text/style/ClickableSpan;
.source "NewsCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsCursorAdapter;->createLinkSpan(Landroid/app/Activity;Lcom/perm/kate/GroupLink;Z)Landroid/text/style/ClickableSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$gl:Lcom/perm/kate/GroupLink;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/GroupLink;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/perm/kate/NewsCursorAdapter$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/perm/kate/NewsCursorAdapter$2;->val$gl:Lcom/perm/kate/GroupLink;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter$2;->val$activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 764
    :goto_0
    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter$2;->val$gl:Lcom/perm/kate/GroupLink;

    iget-object v0, v0, Lcom/perm/kate/GroupLink;->link:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/NewsCursorAdapter$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->openVK_COMlink(Ljava/lang/String;Landroid/content/Context;)Z

    goto :goto_0
.end method
