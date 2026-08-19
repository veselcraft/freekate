.class public final synthetic Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/perm/kate/BaseActivity;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/perm/kate/session/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/perm/kate/BaseActivity;JLcom/perm/kate/session/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda4;->f$0:Lcom/perm/kate/BaseActivity;

    iput-wide p2, p0, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda4;->f$1:J

    iput-object p4, p0, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda4;->f$2:Lcom/perm/kate/session/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda4;->f$0:Lcom/perm/kate/BaseActivity;

    iget-wide v1, p0, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda4;->f$1:J

    iget-object v3, p0, Lcom/perm/utils/MarketAlbumsHelper$$ExternalSyntheticLambda4;->f$2:Lcom/perm/kate/session/Callback;

    invoke-static {v0, v1, v2, v3}, Lcom/perm/utils/MarketAlbumsHelper;->$r8$lambda$rY9Kx_kWTAJoQg0B6L04XhcbIxk(Lcom/perm/kate/BaseActivity;JLcom/perm/kate/session/Callback;)V

    return-void
.end method
