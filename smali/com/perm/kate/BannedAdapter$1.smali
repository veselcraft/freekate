.class Lcom/perm/kate/BannedAdapter$1;
.super Ljava/lang/Object;
.source "BannedAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BannedAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/BannedAdapter;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/perm/kate/BannedAdapter$1;->this$0:Lcom/perm/kate/BannedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/perm/kate/BannedAdapter$1;->this$0:Lcom/perm/kate/BannedAdapter;

    invoke-static {v0}, Lcom/perm/kate/BannedAdapter;->access$000(Lcom/perm/kate/BannedAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/NewsCursorAdapter;->profileClick(Landroid/view/View;Landroid/app/Activity;)V

    return-void
.end method
