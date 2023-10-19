.class public L䆀/உ/䂻/உ$உ$உ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = L䆀/உ/䂻/உ$உ;->உ(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic 㚬:Ljava/lang/String;

.field public final synthetic 㺴:Ljava/lang/String;

.field public final synthetic 䂻:Ljava/lang/String;


# direct methods
.method public constructor <init>(L䆀/உ/䂻/உ$உ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, L䆀/உ/䂻/உ$உ$உ;->䂻:Ljava/lang/String;

    iput-object p3, p0, L䆀/உ/䂻/உ$உ$உ;->㚬:Ljava/lang/String;

    iput-object p4, p0, L䆀/உ/䂻/உ$உ$உ;->㺴:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, L䆀/உ/䂻/䂻;->䂻()L䆀/உ/䂻/䂻;

    move-result-object v0

    iget-object v1, p0, L䆀/உ/䂻/உ$உ$உ;->䂻:Ljava/lang/String;

    iget-object v2, p0, L䆀/உ/䂻/உ$உ$உ;->㚬:Ljava/lang/String;

    iget-object v3, p0, L䆀/உ/䂻/உ$உ$உ;->㺴:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, L䆀/உ/䂻/䂻;->㺴(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
