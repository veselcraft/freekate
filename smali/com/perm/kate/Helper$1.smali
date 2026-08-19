.class Lcom/perm/kate/Helper$1;
.super Ljava/lang/Object;
.source "Helper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$links:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/perm/kate/Helper$1;->val$links:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/perm/kate/Helper$1;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 311
    iget-object p1, p0, Lcom/perm/kate/Helper$1;->val$links:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/Helper$1;->val$context:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->openUrl(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
