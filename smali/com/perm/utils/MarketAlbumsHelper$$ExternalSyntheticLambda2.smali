.class public final synthetic Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/perm/kate/BaseActivity;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/perm/kate/BaseActivity;JJLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda2;->f$0:Lcom/perm/kate/BaseActivity;

    iput-wide p2, p0, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda2;->f$1:J

    iput-wide p4, p0, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda2;->f$2:J

    iput-object p6, p0, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda2;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 9

    iget-object v0, p0, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda2;->f$0:Lcom/perm/kate/BaseActivity;

    iget-wide v1, p0, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda2;->f$1:J

    iget-wide v3, p0, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda2;->f$2:J

    iget-object v5, p0, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda2;->f$3:Ljava/util/ArrayList;

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-static/range {v0 .. v8}, Lcom/perm/utils/MarketAlbumsHelper;->$r8$lambda$clz3O0FxcUSJfMRxpNeFpcBLoaw(Lcom/perm/kate/BaseActivity;JJLjava/util/ArrayList;Landroid/content/DialogInterface;IZ)V

    return-void
.end method
